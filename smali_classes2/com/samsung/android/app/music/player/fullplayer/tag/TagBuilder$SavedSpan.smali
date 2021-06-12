.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedSpan"
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->a:Ljava/lang/CharSequence;

    .line 182
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$SavedSpan;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;

    return-void
.end method
