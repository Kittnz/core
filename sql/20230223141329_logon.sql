-- Make existing accounts eligible for password change reward.
UPDATE `account` SET `flags`=(`flags` | 256) WHERE !(`flags` & 256);
