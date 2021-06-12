.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDrawableCacheHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache$DefaultDrawableCacheHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
