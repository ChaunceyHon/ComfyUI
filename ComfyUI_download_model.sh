#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
��U�ddownload_model.sh �XmSW�ί�]�L�`^̇:N�X3q���jf�N�Y�*;⮁E�4��mԐ�ZE#�HM��ȏ�����w�+.˂����9����s�`��6̰�a��4�� %W��4
������p�s91Ca�9��ho�4�e�<ñ���XG;�h�1�'��8瀮�����e*��v'(�-J�r�_|�%��\^ZH�s�#S�+�-%���5�'r2%���Cz�U1�^�Ee r�~�0�'�w��;�< N���|m��|>����j��m���3/����D[��]��@܋�(9�	��?f 
�ĕZ|�1��%��Iov��^Do�^!3y\N�&k����|N�����˳]`��?���g�d�I\��$�(�F�����
9�&�f����pɆ�����Q }������ͣ�Y�:�@�d�i���Þo;��u����=�J
����O���F��X�x'dK6�A���_�����r�g��o�R�W:�A����L2<��CO0����Q7���q�wt�aGGh�B����8>cPhp5m��贜J����NpJ����x��[�7�-.�
�'��vYDF��G�B��K�����h��!}����*+P�~Q�j"oZ��	�c��(�C��nYA��۷��q[�~�6ɱ��s��7��l(p d��VPΊKim��@W#�`oG�+�j�?�՟�N�;��h��!�u��]XF!���x�Z���й��@�2S�����[����q�Po[��VJ}mlE��9�<6��lyyjWKK�����wa������z��a=�޹r�K�V�����)C3R�0�̡�K2
�hB|��֒(��v��.~��,z�@���v���RP��x�����zh�E]^\~�{5q`�ǐ�:4p)���q�Q���rp4�	J�PZ7�"ﴦN�7��)���f���������w�tW4H��t�)M����/3 �o��L��'R.i�(��,oq0�	��(�2�}!���*w�6�NXGd�̇b)�,��{)��IT��6�U��X��z�Y�V�N�7���&��1uz���u�s��4��?nj�$׺�:#��H٨���O*ykNAUS��L}�q�/m��������oj5M\Y����jw	3�S[��$ij%gw�잦)Ti%*Ɗ3_^����F�_V�FR����Z���\��ѱ�--��mdjS��TXߪ��S���������]�Uu�g����r�Lh���6��*��diA?  