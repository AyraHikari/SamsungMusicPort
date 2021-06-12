.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartReorderHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$reorderable$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .line 404
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$itemChecker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper$itemChecker$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    return-object v0
.end method

.method public final b()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    return-object v0
.end method
