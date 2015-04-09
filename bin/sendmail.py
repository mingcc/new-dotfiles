import smtplib
import argparse

def send_mail(fromaddr, to):

    msg = 'Why,Oh why!'
    username = 'lm90311@gmail.com'
    password = 'mtuujfmgcjnqxgrw'
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.starttls()
    server.login(username,password)
    server.sendmail(fromaddr, to, msg)
    server.quit()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="sending gmail")
    parser.add_argument('--fromaddr', action="store", dest="fromaddr", default="lm90311@gmail.com")
    parser.add_argument('--toaddr', action="store", dest="toaddr", default="lm90311@gmail.com")
    args = parser.parse_args()
    send_mail(args.fromaddr, args.toaddr)

