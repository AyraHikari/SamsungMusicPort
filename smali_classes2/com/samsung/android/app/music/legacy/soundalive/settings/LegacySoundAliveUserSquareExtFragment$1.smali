.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->b(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[Landroid/widget/Switch;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->b(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[Landroid/widget/Switch;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object v2

    aput v0, v2, v1

    return-void
.end method
