.class Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "onModeChanged()"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "onSizeChanged()"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "onZoneChanged()"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;->a(I)V

    :cond_0
    return-void
.end method
