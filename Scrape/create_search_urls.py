f =  open('search_urls.txt', 'w')
url = 'https://www.amazon.com/s?k=smartphones&i=electronics-intl-ship&ref=nb_sb_noss'
f.write(url)
f.write('\n')


for i in range(2,401):
    url= 'https://www.amazon.com/s?k=smartphones&i=electronics-intl-ship&page='+ str(i) + '&qid=1594219856&ref=sr_pg_'+ str(i)
    f.write(url)
    f.write('\n')
f.close()