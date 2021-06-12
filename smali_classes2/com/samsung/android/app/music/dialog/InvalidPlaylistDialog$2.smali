.class Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/Category;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$2;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$2;->a:Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method
