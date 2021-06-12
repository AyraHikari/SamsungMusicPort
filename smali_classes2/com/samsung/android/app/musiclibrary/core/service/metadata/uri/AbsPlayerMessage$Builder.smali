.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setInteger(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNegativeText(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_negative"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPositiveText(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_positive"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
