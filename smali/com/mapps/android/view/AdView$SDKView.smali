.class Lcom/mapps/android/view/AdView$SDKView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDKView"
.end annotation


# instance fields
.field private btn_image:Landroid/widget/ImageView;

.field private icon_image:Landroid/widget/ImageView;

.field private icon_layout:Landroid/widget/LinearLayout;

.field private layout_base:Landroid/widget/RelativeLayout;

.field private layout_linearbase:Landroid/widget/LinearLayout;

.field private sdk_image:Landroid/widget/ImageView;

.field private text_bottom:Landroid/widget/TextView;

.field private text_top:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1957
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    .line 1958
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 1946
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    .line 1947
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    .line 1948
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    .line 1949
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    .line 1950
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    .line 1951
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    .line 1952
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    .line 1953
    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    const/4 p8, -0x1

    if-eqz p10, :cond_1

    .line 1960
    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result p9

    if-gtz p9, :cond_0

    goto :goto_0

    :cond_0
    const-string p9, "#"

    .line 1963
    invoke-virtual {p10, p9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p9

    if-ne p9, p8, :cond_2

    .line 1965
    new-instance p9, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p9, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    goto :goto_1

    :cond_1
    :goto_0
    const-string p10, "#FFFFFF"

    .line 1969
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p10, "#FFFFFF"

    .line 1974
    :goto_2
    iput-object p4, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    .line 1975
    new-instance p9, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    .line 1976
    iget-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    .line 1977
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1976
    invoke-virtual {p9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    iget-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {p9, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1980
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, p8, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1982
    new-instance p9, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    .line 1983
    iget-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    invoke-virtual {p9, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1986
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p9

    invoke-direct {p3, p9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    const/4 p3, 0x5

    const/4 p9, 0x3

    if-eqz p5, :cond_3

    .line 1988
    move-object v0, p5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1990
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1992
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x3c

    invoke-static {p2, v0}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result p2

    .line 1993
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 1995
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1996
    invoke-virtual {v1, p3, p9, p9, p9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1997
    iget-object p3, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1998
    iget-object p3, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 1999
    iget-object p3, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    move-object p2, v1

    goto :goto_3

    .line 2002
    :cond_3
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2003
    invoke-virtual {p2, p3, p9, p9, p9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2006
    :cond_4
    :goto_3
    iget-object p3, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    new-instance p2, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    .line 2008
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2009
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2010
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    iget-object p9, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2012
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p8, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p9, 0xa

    const/4 v0, 0x0

    .line 2014
    invoke-virtual {p2, p9, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2015
    new-instance p9, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2016
    invoke-virtual {p9, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x1

    .line 2017
    invoke-virtual {p9, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2019
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p8, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p8, 0x3f800000    # 1.0f

    .line 2021
    iput p8, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2023
    new-instance p8, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p8, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    .line 2024
    iget-object p8, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-virtual {p8, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    const/high16 p8, 0x41800000    # 16.0f

    invoke-virtual {p6, p8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2026
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2027
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2028
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-static {p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2029
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 2031
    new-instance p6, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    .line 2032
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2033
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {p6, p8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2034
    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2035
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    const/16 p6, 0x30

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2036
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-static {p10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2038
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_top:Landroid/widget/TextView;

    invoke-virtual {p9, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2039
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->text_bottom:Landroid/widget/TextView;

    invoke-virtual {p9, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2041
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2042
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2043
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2045
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2046
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_linearbase:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2048
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x14

    invoke-static {p2, p3}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result p2

    .line 2049
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, p3}, Lcom/mz/common/utils/DisplayUtil;->a(Landroid/content/Context;I)I

    move-result p3

    .line 2050
    new-instance p6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p6, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p7, 0x4

    .line 2051
    div-int/2addr p2, p7

    div-int/2addr p3, p7

    invoke-virtual {p6, v0, v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p2, 0xb

    .line 2052
    invoke-virtual {p6, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xc

    .line 2053
    invoke-virtual {p6, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2055
    new-instance p2, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    .line 2056
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2057
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    const/16 p3, 0x1a0a

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setId(I)V

    .line 2059
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    new-instance p3, Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-direct {p3, p0}, Lcom/mapps/android/view/AdView$SDKView$1;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2089
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$45(Lcom/mapps/android/view/AdView;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2090
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2092
    :cond_5
    invoke-virtual {p0, p4}, Lcom/mapps/android/view/AdView$SDKView;->addView(Landroid/view/View;)V

    .line 2093
    iget-object p2, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2094
    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$46(Lcom/mapps/android/view/AdView;)Lcom/mz/common/ui/UILoad;

    move-result-object p1

    sget-object p2, Lcom/mz/common/ui/UILoad$ImageBaseUrl;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKView;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/mapps/android/view/AdView$SDKView$2;

    invoke-direct {p4, p0}, Lcom/mapps/android/view/AdView$SDKView$2;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/mz/common/ui/UILoad;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    if-nez p5, :cond_6

    .line 2103
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_layout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;
    .locals 0

    .line 1953
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKView;)Landroid/widget/ImageView;
    .locals 0

    .line 1948
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 2127
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->setIconX()V

    return-void
.end method

.method static synthetic access$3(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 2250
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->sspLanding()V

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .line 2225
    invoke-direct {p0}, Lcom/mapps/android/view/AdView$SDKView;->requestTouch()V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;
    .locals 0

    .line 1945
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    return-object p0
.end method

.method private requestTouch()V
    .locals 4

    .line 2226
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$40(Lcom/mapps/android/view/AdView;Z)V

    .line 2227
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->onAdClick()V

    .line 2228
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2230
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$42(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3, v1}, Lcom/mapps/android/view/AdView;->access$50(Lcom/mapps/android/view/AdView;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/mz/common/listener/AdLinkListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2233
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$5;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$5;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    const-string v2, "TouchThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setIconX()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 2128
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2129
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 2130
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-double v2, v0

    .line 2131
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 2132
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double v4, v4, v2

    double-to-int v0, v4

    .line 2133
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 2135
    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    if-lez v2, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int v2, v0, v3

    .line 2140
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    .line 2141
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 2143
    :cond_2
    invoke-static {}, Lcom/mapps/android/view/AdView;->access$41()Ljava/lang/String;

    move-result-object v0

    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2144
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2146
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private sspLanding()V
    .locals 3

    .line 2251
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2252
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2253
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$40(Lcom/mapps/android/view/AdView;Z)V

    .line 2254
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$52(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    .line 2255
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2256
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Dsp_click"

    .line 2257
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2258
    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->onAdClick()V

    .line 2261
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2262
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2263
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2264
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$42(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$51(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mz/common/listener/AdLinkListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2268
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$6;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$6;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    const-string v2, "TouchThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finalizeSDKView()V
    .locals 2

    .line 2168
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2170
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$48(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$49(Landroid/widget/ImageView;)V

    .line 2174
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2175
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2176
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2177
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->icon_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$49(Landroid/widget/ImageView;)V

    .line 2178
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2179
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->btn_image:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$49(Landroid/widget/ImageView;)V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2191
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$43(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2194
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2196
    :cond_1
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKView;->performClick()Z

    .line 2197
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 2199
    :cond_2
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2205
    new-instance p1, Lcom/mapps/android/view/AdView$SDKView$4;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdView$SDKView$4;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 2185
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBaseLayoutParm(II)V
    .locals 2

    .line 2153
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2154
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2155
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$47(Lcom/mapps/android/view/AdView;)I

    move-result p1

    const/16 p2, 0xe

    if-nez p1, :cond_0

    .line 2156
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2157
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$47(Lcom/mapps/android/view/AdView;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x9

    .line 2158
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2159
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$47(Lcom/mapps/android/view/AdView;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 p1, 0xb

    .line 2160
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 2162
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2163
    :goto_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->layout_base:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 2108
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2110
    iget-object p1, p0, Lcom/mapps/android/view/AdView$SDKView;->sdk_image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 2111
    new-instance v0, Lcom/mapps/android/view/AdView$SDKView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$SDKView$3;-><init>(Lcom/mapps/android/view/AdView$SDKView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
