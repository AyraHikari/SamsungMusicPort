.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 0

    .line 649
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->reorderRadioQueue(II)V

    return-void
.end method
