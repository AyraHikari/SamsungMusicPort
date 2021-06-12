.class Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->extractHighlight(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

.field final synthetic val$listener:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;Landroid/net/Uri;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;->this$0:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;->val$listener:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;

    iput-object p3, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .locals 3

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;->val$listener:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;->val$uri:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractFinished(Landroid/net/Uri;J)V

    return-void
.end method
