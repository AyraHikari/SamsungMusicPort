.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$9;
.super Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;)V

    return-void
.end method


# virtual methods
.method public dataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 242
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 251
    :cond_0
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    .line 252
    iget-boolean v0, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a:Z

    if-nez v0, :cond_1

    return p4

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 256
    iget p4, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 257
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 258
    :cond_2
    iget p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    if-nez p2, :cond_3

    .line 259
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->d(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_0
    return v0
.end method
