.class Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$4;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(IZ)V

    return-void
.end method
