.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCloneBundle()Landroid/os/Bundle;
    .locals 1

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 65
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 70
    monitor-exit p0

    return p2

    .line 72
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
