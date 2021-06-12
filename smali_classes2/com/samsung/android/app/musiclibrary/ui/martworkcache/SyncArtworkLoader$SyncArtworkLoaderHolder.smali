.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncArtworkLoaderHolder"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-void
.end method
