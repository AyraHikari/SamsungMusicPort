.class public final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;->invoke()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2$1;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2$1;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2$1;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu$onVolumeUpdateListener$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$VolumeMenu;Landroid/view/MenuItem;)V

    return-void
.end method
