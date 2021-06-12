.class Lcom/mapps/android/view/AdView$8;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    .line 1210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1214
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1215
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1216
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget v1, v1, Lcom/mapps/android/view/AdView;->nBackStrech:I

    if-eqz v1, :cond_0

    .line 1217
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v3, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mapps/android/view/AdView;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 1218
    :cond_0
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1219
    iget-object v3, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    const/16 v1, 0x280

    .line 1222
    iget-object v3, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$15(Lcom/mapps/android/view/AdView;)I

    move-result v3

    .line 1226
    :cond_2
    iget-object v6, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v6}, Lcom/mapps/android/view/AdView;->access$16(Lcom/mapps/android/view/AdView;)I

    move-result v6

    .line 1227
    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$17(Lcom/mapps/android/view/AdView;)I

    move-result v7

    if-ge v7, v6, :cond_3

    move v6, v7

    :cond_3
    if-ge v1, v6, :cond_4

    .line 1233
    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_5

    int-to-float v7, v6

    int-to-float v1, v1

    div-float/2addr v7, v1

    int-to-float v1, v3

    mul-float v1, v1, v7

    float-to-int v3, v1

    goto :goto_0

    :cond_4
    if-le v1, v6, :cond_5

    int-to-float v1, v1

    int-to-float v7, v6

    div-float/2addr v1, v7

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    :cond_5
    :goto_0
    if-eq v2, v5, :cond_7

    if-ne v2, v4, :cond_6

    goto :goto_1

    .line 1250
    :cond_6
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$18(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1248
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v4, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$16(Lcom/mapps/android/view/AdView;)I

    move-result v5

    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$15(Lcom/mapps/android/view/AdView;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v7}, Lcom/mapps/android/view/AdView;->getBackStrech(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$18(Lcom/mapps/android/view/AdView;Landroid/graphics/drawable/Drawable;)V

    .line 1253
    :goto_2
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-boolean v1, v1, Lcom/mapps/android/view/AdView;->bAnimate:Z

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_d

    .line 1254
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1255
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1256
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v7}, Lcom/mapps/android/view/AdView;->getImage1()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mapps/android/view/AdView;->access$21(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V

    .line 1257
    :cond_8
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v7, Lcom/mapps/android/view/AdView$SDKView;

    iget-object v9, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, ""

    const-string v15, ""

    const/16 v18, 0x0

    move-object v8, v7

    move/from16 v16, v6

    move/from16 v17, v3

    invoke-direct/range {v8 .. v18}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v1, v7}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1258
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1259
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1258
    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1262
    :cond_9
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1263
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1264
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v7, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v7}, Lcom/mapps/android/view/AdView;->getImage2()Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;Landroid/widget/RelativeLayout;)V

    .line 1265
    :cond_a
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v7, Lcom/mapps/android/view/AdView$SDKView;

    iget-object v9, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, ""

    const-string v15, ""

    const/16 v18, 0x0

    move-object v8, v7

    move/from16 v16, v6

    move/from16 v17, v3

    invoke-direct/range {v8 .. v18}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v1, v7}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1266
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1267
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1266
    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v5, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1271
    :cond_b
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1272
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1273
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1274
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 1275
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1278
    :cond_c
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    .line 1279
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v2, v3}, Lcom/mapps/android/view/AdView;->access$29(Lcom/mapps/android/view/AdView;FF)V

    goto/16 :goto_3

    .line 1282
    :cond_d
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1283
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v7, Lcom/mapps/android/view/AdView$SDKView;

    iget-object v9, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v10

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v8, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, ""

    const-string v15, ""

    const/16 v18, 0x0

    move-object v8, v7

    move/from16 v16, v6

    move/from16 v17, v3

    invoke-direct/range {v8 .. v18}, Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v1, v7}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;Lcom/mapps/android/view/AdView$SDKView;)V

    .line 1284
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1285
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1284
    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView$SDKView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v5, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mapps/android/view/AdView;->addView(Landroid/view/View;)V

    .line 1290
    :cond_e
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/mapps/android/view/AdView$SDKView;->setBaseLayoutParm(II)V

    .line 1292
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1293
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 1294
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$28(Lcom/mapps/android/view/AdView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1297
    :cond_f
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    .line 1298
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    .line 1299
    iget-object v1, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    iget-object v2, v0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method
