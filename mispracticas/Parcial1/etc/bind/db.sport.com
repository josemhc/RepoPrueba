;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	sport.com. root.sport.com. (
			      2024082201 ; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	maestro.sport.com.
maestro	IN	A	192.168.50.3
@	IN	NS	dns2.sport.com.
dns1	IN	CNAME	maestro
mail	IN	CNAME	maestro
esclavo	IN	CNAME	dns2
dns2	IN	A	192.168.50.2
