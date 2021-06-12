.class final enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;
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

    .line 20
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

    .line 23
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    return-object v0
.end method

.method public update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z
    .locals 0

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 32
    :cond_0
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    .line 33
    iget-boolean p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return p3
.end method
