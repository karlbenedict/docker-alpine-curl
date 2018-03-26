#!/usr/bin/env bash 

# retrieve basemap data
cd /opt/geoserver/data_dir/basemap

echo "now retrieving data"

curl -s -O http://kkb-geo-data-public.s3.us-west-1.amazonaws.com/imagery/BMNG/BMNG_west.zip
unzip BMNG_west.zip -d BMNG-west
echo "completed BMNG-west\n"


curl -s -O http://kkb-geo-data-public.s3.us-west-1.amazonaws.com/imagery/BMNG/BMNG_east.zip
unzip BMNG_east.zip -d BMNG-east
echo "completed BMNG-east\n"

curl -s -O http://kkb-geo-data-public.s3.us-west-1.amazonaws.com/vector/statep010_nt00798.zip
unzip statep010_nt00798.zip -d statep010_nt00798
echo "completed state boundaries\n"

curl -s -O http://kkb-geo-data-public.s3.us-west-1.amazonaws.com/vector/USGS_govt_units/GOVTUNIT_New_Mexico_State_Shape.zip
unzip GOVTUNIT_New_Mexico_State_Shape.zip -d GOVTUNIT_New_Mexico_State_Shape
echo "completed NM Govt units\n"

curl -s -O http://kkb-geo-data-public.s3.us-west-1.amazonaws.com/vector/USGS_transportation/TRAN_New_Mexico_State_Shape.zip
unzip TRAN_New_Mexico_State_Shape.zip -d TRAN_New_Mexico_State_Shape
echo "completed NM transportation\n"


echo "now completed retrieving basemap data"