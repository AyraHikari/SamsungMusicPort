.class public final Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const v0, 0x80002

    if-ne p0, v0, :cond_0

    .line 27
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong cp attrs! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    const v0, 0x80002

    if-ne p0, v0, :cond_0

    .line 18
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong cp attrs! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
