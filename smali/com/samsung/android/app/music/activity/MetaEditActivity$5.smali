.class Lcom/samsung/android/app/music/activity/MetaEditActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->j(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    .line 311
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    .line 312
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4162"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->d(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->finish()V

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$5;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    .line 307
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4161"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f1305e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
