.class Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$3;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowExit()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$3;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->access$200(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;->onWindowExit()Z

    move-result v0

    return v0
.end method
