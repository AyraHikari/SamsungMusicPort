.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateToChild"
.end annotation


# instance fields
.field private final adapterIndex:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;->adapterIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$AnimateToChild;->adapterIndex:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)V

    return-void
.end method
