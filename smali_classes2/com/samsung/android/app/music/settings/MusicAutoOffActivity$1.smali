.class Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


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

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    const-string v1, "music_auto_off_entry_position"

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    const-string v1, "music_auto_off_custom_hour"

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    const-string v1, "music_auto_off_custom_min"

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity$1;->a:Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->b(Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method
