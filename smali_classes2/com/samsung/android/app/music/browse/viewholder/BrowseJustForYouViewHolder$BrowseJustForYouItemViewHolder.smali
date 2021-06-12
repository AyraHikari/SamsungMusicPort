.class Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;
.super Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowseJustForYouItemViewHolder"
.end annotation


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 0

    .line 491
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;-><init>(Landroid/view/View;)V

    .line 492
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;
    .locals 0

    .line 486
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;
    .locals 3

    packed-switch p2, :pswitch_data_0

    .line 509
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type ! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p2, 0x7f04002c

    goto :goto_0

    :pswitch_1
    const p2, 0x7f04002a

    goto :goto_0

    :pswitch_2
    const p2, 0x7f040029

    .line 511
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;

    .line 512
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 513
    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 4

    .line 518
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseItemViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    .line 519
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 520
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 522
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f13014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 523
    invoke-virtual {p1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 525
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130083

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0b03b8

    .line 526
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 527
    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 539
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$2;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f13015d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 556
    new-instance v2, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder$3;-><init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "4"

    .line 566
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder$BrowseJustForYouItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f13017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-static {}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindView url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f1000b6

    .line 572
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    const v1, 0x7f02005e

    .line 573
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7d2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
