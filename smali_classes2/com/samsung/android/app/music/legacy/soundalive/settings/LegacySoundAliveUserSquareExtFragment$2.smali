.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Landroid/view/View;)V
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

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 101
    invoke-static {}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown setting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object p1

    const/4 v0, 0x4

    aput p2, p1, v0

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object p1

    const/4 v0, 0x1

    aput p2, p1, v0

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object p1

    const/4 v0, 0x0

    aput p2, p1, v0

    :goto_0
    const/4 p1, 0x0

    .line 103
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a([I[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f1302f6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
