.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Key;
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public doNegative()V
    .locals 0

    return-void
.end method

.method public doPositive()V
    .locals 0

    return-void
.end method

.method public getIcon()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getInt(Ljava/lang/String;)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_negative"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_positive"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method
