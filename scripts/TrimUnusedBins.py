# Script to locate and MOVE unused binaries from the site into new directory
import glob
import re
import os


# Directories:

ROOT_DIR = "./"   # assume run from root of repo
SITE_DIR = ROOT_DIR + "site/"
UNUSED_DIR = ROOT_DIR + "unused/"
DOWNLOADS_DIR = SITE_DIR + "downloads/"

# parsing with regex's below is pretty casual and should be manually verified.
# Notably, it makes no effort to recognize things that look like links that are embedded
# in strings etc.

# Useful regular expressions
#NOTE: (?P<url>([^\)\(]+)(\([^\)]*\))+)    (?P<url>[^\)\(]+)
MDLINK_re = re.compile(r"""
    \[            # name in square brackets
        (?P<tag>[^\]]+)  # capture name, with arbitrary matching parens
    \]   
    \(            # link marker
        (?P<url>(([^\)\(]*)(\([^\)]*\))?)+) # capture link with optional embedded matched parens
    \)            # link close mark
""", re.VERBOSE)


HREFLINK_re = re.compile(r"""
    href=\"             # href tag
            ([^"]+)     # capture the reference
        \"
""", re.VERBOSE)

URL_re = re.compile(r'(https?|ftp)://([^\s/$.?#].[^\s]*)$')

URL2_re = re.compile(r"""
    ^                               # Start of string
    (?:(?P<scheme>https?)://        # Optional scheme (http or https)
    (?P<host>[^:/\s]+))?            # Optional host, only if scheme is present
    (?::(?P<port>\d+))?             # Optional port
    (?P<path>/[^\s?#]*)?            # Optional path
    (\?(?P<query>[^\s#]*))?         # Optional query
    (\#(?P<fragment>[^\s]*))?$      # Optional fragment
    """, re.VERBOSE)
 
 
def parse_url(url):

    match = re.match(URL_re, url)
    if match:
        protocol = match.group(1)
        domain = match.group(2)
        return protocol, domain
    else:
        return None


def grep(file_path, pattern):
    with open(file_path, 'r') as file:
        content = file.read()
        matches = re.findall(pattern, content)
        return matches

 
def main():
    # find all the files referenced in MD links
    print("Program should be run from root of repo!")

    # create a list of all links on IVI site
    links = []
    md_files = glob.glob( SITE_DIR+'**/*.md', recursive=True)
    for filepath in md_files:
        with open(filepath, 'r') as file:
            for line in file:
                # check for markdown syntax
                match = re.search(MDLINK_re, line)
                if match:
                    url = match.groupdict()["url"]
                    tag = match.groupdict()["tag"]
                    links.append((url,tag))
                
                # check for html syntax
                matches = re.findall(HREFLINK_re, line)
                for match in matches:
                    url = match
                    title = "href link in"+filepath
                    links.append((url,title))
    
    # eliminate links that are not in the downloads directory
    links_to_remove = []
    for link in links:
        if not re.findall(r"/downloads/", link[1]):
            #print("Removing:("+link[0]+")["+link[1]+"]")
            links_to_remove.append(link)
        
    for link in links_to_remove:
        links.remove(link)
    
    # now links has a list of files we need to retain
      
    # make a list of all target files
    all_paths = glob.glob("**/*.*", root_dir=DOWNLOADS_DIR, recursive=True)

   
    # trim links to be relative to downloads directory
    
    used_paths = []
    for link in links:
        trimmed = re.sub(r"^[\./]*downloads/", "", link[1])
        trimmed = re.sub(r"^https?://ivifoundation.org/downloads/", "", trimmed)  # experimentally, one shows up...
        trimmed = re.sub("%20", " ", trimmed)
        used_paths.append(trimmed)

    

    unused_paths = all_paths.copy()
    for path in used_paths:
        if path in unused_paths:
            unused_paths.remove(path)
        if not path in all_paths:
            print("Seem to have found a bad link:",path)

    for filepath in unused_paths:
        dirname, filename = os.path.split(filepath)
        print("mv downloads/"+dirname+"/"+filename)
        # following line does the work, uncomment with caution!!
        #os.makedirs(UNUSED_DIR+dirname, exist_ok=True)
        #os.rename(DOWNLOADS_DIR+filepath, UNUSED_DIR+filepath)
        

main()
