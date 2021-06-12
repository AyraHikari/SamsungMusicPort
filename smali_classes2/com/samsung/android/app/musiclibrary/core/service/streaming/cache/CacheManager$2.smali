.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCache(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager$2;->val$type:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->access$100(Landroid/content/Context;I)V

    return-void
.end method
