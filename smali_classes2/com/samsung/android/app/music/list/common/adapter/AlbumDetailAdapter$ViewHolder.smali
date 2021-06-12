.class public final Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    iput p3, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->d:I

    .line 128
    iget p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->d:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f130324

    .line 133
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.sub_header)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->b:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_1
    const p1, 0x7f130192

    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->c:Landroid/view/View;

    goto :goto_0

    :cond_0
    const p1, 0x7f130194

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.text3)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->c:Landroid/view/View;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "discNum"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->d:I

    return v0
.end method
