.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpotifyTipHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/view/View;

.field private final d:Landroid/text/Html$ImageGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/main/MainActivity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    new-instance p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$mImageGetter$1;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$mImageGetter$1;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast p1, Landroid/text/Html$ImageGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->d:Landroid/text/Html$ImageGetter;

    .line 589
    move-object p1, p0

    check-cast p1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/main/MainActivity;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;)Landroid/widget/PopupWindow;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 13

    const-string v0, "UiList"

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " showTip hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 615
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 616
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04025a

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 618
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f13006b

    .line 624
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 623
    check-cast v3, Landroid/widget/TextView;

    const-string v6, "tipText"

    .line 626
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<img src=\"icon\"> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0b03b5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 628
    iget-object v7, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->d:Landroid/text/Html$ImageGetter;

    .line 626
    invoke-static {v6, v7, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/text/HtmlCompat;->a(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    new-instance v4, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;

    invoke-direct {v4, v2, p0, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;Landroid/content/res/Resources;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 640
    new-array v3, v2, [I

    const v4, 0x7f10086f

    .line 642
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 643
    iget-object v6, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v6, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 644
    aget v6, v3, v5

    iget-object v7, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x1

    .line 645
    aget v8, v3, v7

    iget-object v9, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v9, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "UiList"

    .line 648
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " anchorView x: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v3, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", y: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    aget v3, v3, v7

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width : "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v3, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f100871

    .line 653
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 654
    div-int/lit8 v9, v3, 0x2

    sub-int v9, v6, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 656
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 657
    iget-object v11, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    if-nez v11, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-virtual {v11, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 658
    iget v11, v10, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v10

    sub-int/2addr v11, v4

    add-int v4, v9, v3

    if-le v4, v11, :cond_b

    sub-int v9, v11, v3

    .line 663
    :cond_b
    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 665
    iget-object v4, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    const v7, 0x7f100870

    .line 668
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int v7, v8, v7

    .line 664
    invoke-virtual {v1, v4, v5, v9, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 670
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f13057b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 671
    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f020366

    .line 673
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sub-int v7, v6, v9

    .line 674
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v12, "d.bitmap"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v10, v2

    sub-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 675
    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v7

    int-to-float v10, v5

    cmpg-float v7, v7, v10

    if-gez v7, :cond_c

    .line 676
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v7, "d.bitmap"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 680
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "key_spotify_oobe_show_tip"

    .line 679
    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "UiList"

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " showTip anchorViewCenterX="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tipViewX="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tipViewBelowY="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tipViewWidth="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", displayFrameRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iput-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->b:Landroid/widget/PopupWindow;

    return-void

    .line 673
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->c:Landroid/view/View;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_spotify_oobe_show_tip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "UiList"

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onWindowFocusChanged hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showTip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a()V

    :cond_1
    return-void
.end method
