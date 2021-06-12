.class Lcom/samsung/android/app/music/activity/SearchActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/SearchActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$3;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 201
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$3;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity;->finish()V

    :cond_0
    return-void
.end method
