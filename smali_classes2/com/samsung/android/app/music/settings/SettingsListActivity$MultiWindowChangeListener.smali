.class Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowChangeListener"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/settings/SettingsListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Lcom/samsung/android/app/music/settings/SettingsListActivity;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsListActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Lcom/samsung/android/app/music/settings/SettingsListActivity;Z)V

    return-void
.end method
