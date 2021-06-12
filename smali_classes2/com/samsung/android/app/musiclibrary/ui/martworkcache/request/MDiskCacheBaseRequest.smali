.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
.source "SourceFile"


# static fields
.field protected static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    return-void
.end method
