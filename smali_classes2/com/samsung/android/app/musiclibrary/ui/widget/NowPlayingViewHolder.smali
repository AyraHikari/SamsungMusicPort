.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "nowPlayingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->a:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->b:I

    .line 236
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->b:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 244
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->c:I

    invoke-static {p1, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
