.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener$inlined:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$$special$$inlined$apply$lambda$1;->$listener$inlined:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$$special$$inlined$apply$lambda$1;->$listener$inlined:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;->onCloseClick()V

    return-void
.end method
