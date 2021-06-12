.class final Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog;->b([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;->$context$inlined:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareInternal() bixbyCrossSharePackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$shareInternal$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->a(Lcom/samsung/android/app/music/AbsShareableWithDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
