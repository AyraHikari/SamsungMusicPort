.class Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowChangeListener"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/settings/SettingsActivity;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Lcom/samsung/android/app/music/settings/SettingsActivity;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsActivity$MultiWindowChangeListener;->a:Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/SettingsActivity;->a(Lcom/samsung/android/app/music/settings/SettingsActivity;Z)V

    return-void
.end method
