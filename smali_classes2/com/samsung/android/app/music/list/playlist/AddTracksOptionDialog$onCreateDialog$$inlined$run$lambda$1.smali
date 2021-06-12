.class final Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $checkedItem$inlined:I

.field final synthetic $choiceItems$inlined:[Ljava/lang/CharSequence;

.field final synthetic $context$inlined:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/CharSequence;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$choiceItems$inlined:[Ljava/lang/CharSequence;

    iput p2, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$checkedItem$inlined:I

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {p2, v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "key_add_tracks_to_top_of_playlist"

    .line 43
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$context$inlined:Landroid/content/Context;

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "playlists_order_custom_bottom"

    .line 44
    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {p2, v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "key_add_tracks_to_top_of_playlist"

    .line 36
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/AddTracksOptionDialog$onCreateDialog$$inlined$run$lambda$1;->$context$inlined:Landroid/content/Context;

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "playlists_order_custom_top"

    .line 37
    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
