SELECT * 
FROM certificates 
WHERE key_algorithm IS NOT NULL 
    AND (LOWER(key_algorithm) IN ('rsaencryption','rsa') 
         OR LOWER(key_algorithm) LIKE '%ec%'
         OR LOWER(signing_algorithm) LIKE '%dsa%'
         OR LOWER(signing_algorithm) LIKE '%rsa%'
         OR LOWER(signing_algorithm) LIKE '%ed25519%'
         OR LOWER(signing_algorithm) LIKE '%ed448%'
         OR LOWER(signing_algorithm) LIKE '%ecdsa%');
