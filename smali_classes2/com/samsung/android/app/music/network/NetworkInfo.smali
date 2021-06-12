.class public Lcom/samsung/android/app/music/network/NetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", etc - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
