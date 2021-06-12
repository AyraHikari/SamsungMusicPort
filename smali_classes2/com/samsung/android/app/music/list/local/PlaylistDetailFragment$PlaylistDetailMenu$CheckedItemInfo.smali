.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckedItemInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1389
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1390
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1390
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 1391
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1391
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->c:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1392
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->d:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1392
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu$CheckedItemInfo;->d:Z

    return v0
.end method
