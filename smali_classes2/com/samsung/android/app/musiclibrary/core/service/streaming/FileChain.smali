.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain$PlayingUri;
    }
.end annotation


# instance fields
.field private mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
.end method

.method public final requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;

    return-object p1
.end method
