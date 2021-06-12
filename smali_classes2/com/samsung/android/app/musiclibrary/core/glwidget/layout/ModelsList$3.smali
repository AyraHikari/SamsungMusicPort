.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<",
        "T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    return-object v0
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    return-object v0
.end method
