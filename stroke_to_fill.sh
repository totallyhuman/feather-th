rm -rf filled
cp -r stroked/ filled/

for f in filled/*
do
	inkscape -g --verb=EditSelectAll --verb=SelectionUnGroup --verb=StrokeToPath --verb=EditDeselect --verb=FileSave --verb=FileQuit $f
done
