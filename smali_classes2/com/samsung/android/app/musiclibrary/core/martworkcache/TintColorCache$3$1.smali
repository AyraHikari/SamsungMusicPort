.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

.field final synthetic val$value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->val$value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 206
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$l:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$baseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

    iget-wide v3, v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;->val$albumId:J

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3$1;->val$value:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    .line 208
    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;->publish()V

    return-void
.end method
