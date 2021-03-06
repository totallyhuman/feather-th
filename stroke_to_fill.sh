if ! [ -x "$(command -v inkscape)" ]; then
	echo 'Error: inkscape is required, but is not installed.' >&2
	exit 1
fi

rm -rf filled
cp -r stroked/ filled/

for f in filled/*; do
	inkscape -g "$f"
       		--verb=EditSelectAll
		--verb=SelectionUnGroup
		--verb=EditDeselect
		--verb=EditSelectSameStrokeStyle
		--verb=StrokeToPath
		--verb=EditDeselect
		--verb=FileSave
		--verb=FileQuit
done
