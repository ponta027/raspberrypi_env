import nfc
import binascii



class NfcSample:
    def __init__(self):
        pass
    def recv( self ):
        clf = nfc.ContactlessFrontend("usb")
        tag = clf.connect(rdwr={'on-connect': lambda tag: False})
        print(tag)
        print(('  \n  '.join(tag.dump())))
        idm  = binascii.hexlify(tag.identifier).decode()
        print(idm)
        print(tag._nfcid)
    def recv_type3( self ):
        clf = nfc.ContactlessFrontend("usb")
        #tag = clf.connect(rdwr={'on-connect': lambda tag: False})
        tag = clf.connect(rdwr={'targets': ['212F', '424F'], 'on-connect': lambda tag: False})
        print(tag)
        print(('  \n  '.join(tag.dump())))
        idm  = binascii.hexlify(tag.identifier).decode()
        print(idm)
        print(tag._nfcid)


if __name__ == "__main__":
    NfcSample().recv_type3()
    #NfcSample().recv()

