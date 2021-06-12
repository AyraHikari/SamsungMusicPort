.class final Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $albumId:J

.field final synthetic $cpAttrs:I

.field final synthetic $m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;IJLcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->this$0:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    iput p2, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$cpAttrs:I

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$albumId:J

    iput-object p5, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->this$0:Lcom/samsung/android/app/music/list/local/PlayableUiFragment;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$cpAttrs:I

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$albumId:J

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;->$m:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(IJJ)V

    return-void
.end method
