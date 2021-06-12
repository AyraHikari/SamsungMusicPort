.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;
    .locals 3

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->d(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;->this$0:Lcom/samsung/android/app/music/menu/PlayerMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup;->g(Lcom/samsung/android/app/music/menu/PlayerMenuGroup;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$shareable$2;->invoke()Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;

    move-result-object v0

    return-object v0
.end method
