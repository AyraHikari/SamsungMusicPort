.class final Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog;->a([J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[J",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ids$inlined:[J

.field final synthetic this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsShareableWithDialog;[J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;->$ids$inlined:[J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;->invoke([J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([J)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$showLegalDialog$$inlined$apply$lambda$1;->$ids$inlined:[J

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->b([J)V

    return-void
.end method
