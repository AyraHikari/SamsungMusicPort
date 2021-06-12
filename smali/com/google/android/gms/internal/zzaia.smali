.class public Lcom/google/android/gms/internal/zzaia;
.super Lcom/google/android/gms/internal/zzahz;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzahz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzahz;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
