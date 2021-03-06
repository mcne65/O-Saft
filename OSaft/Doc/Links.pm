#!/usr/bin/perl
## PACKAGE {

#!# Copyright (c) Achim Hoffmann, sic[!]sec GmbH
#!# This  software is licensed under GPLv2. Please see o-saft.pl for details.

## no critic qw(Documentation::RequirePodSections)
#  our POD below is fine, perlcritic (severity 2) is too pedantic here.

package OSaft::Doc::Links;

use strict;
use warnings;
use Readonly;

Readonly our $VERSION   => "17.07.01";  # official verion number of tis file
Readonly my  $SID       => "@(#) Links.pm 1.2 17/07/19 00:36:02";

#_____________________________________________________________________________
#_____________________________________________________ public documentation __|

=pod

=encoding utf8

=head1 NAME

OSaft::Doc::Links - common perl module to define links related to SSL/TLS.

=head1 SYNOPSIS

    use OSaft::Doc::Links;

=head1 METHODS

=head2 get()

Return all data.

=cut

#_____________________________________________________________________________
#__________________________________________________________________ methods __|

sub get           { return <DATA>; }
sub print_as_text { print  <DATA>; return; }
sub o_saft_links_done() {};     # dummy to check successful include

## PACKAGE }

#_____________________________________________________________________________
#_____________________________________________________________________ self __|

print_as_text() if (! defined caller);
1;

# All documentation is in plain ASCII format.
# It's designed for human radability and simple editing.
# Syntax is:
#       each line consist of a KEY and a TEXT
#       KEY and a TEXT are separated by TAB (aka \09 aka 0x09)
# To support duplicate keys, for example because they have different TEXTs,
# some keys may hav added whitespaces on right.

__DATA__

OWASP TLS Cheat Sheet	https://www.owasp.org/index.php/Transport_Layer_Protection_Cheat_Sheet
OWASP Certificate and Public Key Pinning	https://www.owasp.org/index.php/Certificate_and_Public_Key_Pinning
OWASP HTTP Strict Transport Security	https://www.owasp.org/index.php/HTTP_Strict_Transport_Security
BSI TR-02102 Teil 2	https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Publikationen/TechnischeRichtlinien/TR02102/BSI-TR-02102-2.pdf
ENISA: Algorithms, Key Sizes and Parameters Report	http://www.enisa.europa.eu/activities/identity-and-trust/library/deliverables/algorithms-key-sizes-and-parameters-report
EV Certificate Guidelines	https://www.cabforum.org/EV_Certificate_Guidelines.pdf
AIA	http://www.startssl.com/certs/sub.class4.server.ca.crt
ALPN (draft)	http://tools.ietf.org/html/draft-friedl-tls-applayerprotoneg-02
ALPN 	https://www.imperialviolet.org/2013/03/20/alpn.html
CDP	http://www.startssl.com/crt4-crl.crl, http://crl.startssl.com/crt4-crl.crl
CT	http://ctwatch.net/
False Start	https://www.imperialviolet.org/2012/04/11/falsestart.html
False Start 	https://technotes.googlecode.com/git/falsestart.html
HPKP	https://timtaubert.de/blog/2014/10/http-public-key-pinning-explained/
HPKP 	https://blog.pregos.info/2015/02/23/http-public-key-pinning-hpkp-erklaerung-und-einrichtung/
HPKP  	https://blog.qualys.com/ssllabs/2016/09/06/is-http-public-key-pinning-dead
HPKP in Chrome	hrome://net-internals/#hsts    (show, reset pins in Chrome)
HSTS	http://tools.ietf.org/html/draft-hodges-strict-transport-sec-02
NPN (draft)	https://tools.ietf.org/id/draft-agl-tls-nextprotoneg-04.html
NPN	https://technotes.googlecode.com/git/nextprotoneg.html
NPN 	https://www.imperialviolet.org/2013/03/20/alpn.html
OCSP	http://ocsp.startssl.com/sub/class4/server/ca
OCSP Stapling	http://en.wikipedia.org/wiki/OCSP_stapling                             
PFS	http://en.wikipedia.org/wiki/Perfect_forward_secrecy
Resumtion	https://www.imperialviolet.org/2011/11/22/forwardsecret.html
Resumtion	https://www.imperialviolet.org/2013/06/27/botchingpfs.html
SCSV	https://datatracker.ietf.org/doc/draft-bmoeller-tls-downgrade-scsv/?include_text=1
Server Pinning	https://tools.ietf.org/id/draft-sheffer-tls-pinning-ticket-02.txt
SNI apache	https://wiki.apache.org/httpd/NameBasedSSLVHostsWithSNI
SPDY/3	http://dev.chromium.org/spdy/spdy-protocol/spdy-protocol-draft3
SPDY Protocol	http://www.chromium.org/spdy/spdy-protocol
SRI	Subresource Integrity: https://www.w3.org/TR/SRI/ 4/2016
SRI (Mozilla)	https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity
TACK	http://tack.io/draft.html, 2013 Moxie Marlinspike, Trevor Perrin
Elliptic Curve	https://en.wikipedia.org/wiki/Comparison_of_TLS_implementations#Supported_elliptic_curves
Elliptic Curve for IPsec	https://www.researchgate.net/profile/Johannes_Merkle/publication/260050106_Standardisierung_der_Brainpool-Kurven_fur_TLS_und_IPSec/links/00b7d52f36a0cc2fdd000000.pdf
Elliptic Curve 	http://datatracker.ietf.org/doc/draft-mcgrew-tls-aes-ccm-ecc/ 
Elliptic Curve  	http://datatracker.ietf.org/doc/draft-merkle-tls-brainpool/ 
Elliptic Curve   	http://datatracker.ietf.org/doc/draft-merkle-ikev2-ke-brainpool/ 
Elliptic Curve    	http://datatracker.ietf.org/doc/draft-sheffer-ipsecme-dh-checks/ 
Elliptic Curve     	https://tools.ietf.org/html/draft-josefsson-tls-curve25519-06
Elliptic Curve     	http://eprint.iacr.org/2007/286
Elliptic Curve      	http://www.teletrust.de/fileadmin/files/oid/ecgdsa_final.pdf  
Elliptic Curve       	https://datatracker.ietf.org/doc/draft-harkins-ikev3/ 
XMSS	https://eprint.iacr.org/2011/484.pdf

BEAST	?
BREACH	http://www.breachattack.com/
CRIME	http://zoompf.com/2012/09/explaining-the-crime-weakness-in-spdy-and-ssl
DROWN	https://drownattack.com/
FREAK	https://mitls.org/pages/attacks/SMACK#freak
Lucky 13	?
LogJam	?
POODLE	?
SLOTH	?
SKIP	https://mitls.org/pages/attacks/SMACK
SMACK	https://mitls.org/pages/attacks/SMACK
Sweet32	https://sweet32.info/
TIME	?

# TS 102 042 : http://
    #
    #        http://rsapss.hboeck.de/rsapss-1.0.1.pdf
    #        https://www.bsi.bund.de/DE/Themen/weitereThemen/SINA/sina_node.html  
    #        http://datatracker.ietf.org/doc/draft-eastlake-additional-xmlsec-uris/ 
# Firefox Add-ons
    #        https://calomel.org/firefox_ssl_validation.htm  Calomel SSL Validation
    #        https://addons.mozilla.org/de/firefox/addon/cert-viewer-plus/   Cert Viewer Plus
    #
    #        http://patrol.psyced.org/       Certifiate Patrol
    #        certwatch.simos.info            CertWatch
    #
