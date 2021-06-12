.class final Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;
    .locals 2

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;-><init>()V

    const-string v1, "AbsShareableWithDialog"

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->a(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$logger$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/debug/Logger;

    move-result-object v0

    return-object v0
.end method
