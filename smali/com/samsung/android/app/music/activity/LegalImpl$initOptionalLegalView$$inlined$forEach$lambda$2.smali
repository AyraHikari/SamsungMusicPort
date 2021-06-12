.class final Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/LegalImpl;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/activity/LegalImpl;

.field final synthetic d:Landroid/view/ViewGroup;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Ljava/lang/String;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->c:Lcom/samsung/android/app/music/activity/LegalImpl;

    iput-object p4, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->d:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 267
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->c:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->b(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->a:Landroid/widget/CheckBox;

    const-string v2, "this"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->c:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->c(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/LinkedHashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 392
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->c:Lcom/samsung/android/app/music/activity/LegalImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/activity/LegalImpl;->d(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast v1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;->e:Landroid/view/View;

    const v1, 0x7f130170

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    return-void
.end method
