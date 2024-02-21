% 129×129の全要素が0の行列aを生成する
a = zeros(129);

load mri
D = squeeze(D);

slice_13 = D(:, :, 13);

% mri画像を行列aに挿入する
a(1:128,1:128)= slice_13;

half_row_index = ceil(size(a, 1) / 2);
upper_half = a(1:half_row_index, :);
lower_half = a(half_row_index+1:end, :);
flipped_a = [lower_half; upper_half];

%figure
colormap(map)
image(flipped_a)
axis image
